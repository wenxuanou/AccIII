%% Test and display the accelerometer array data (Design III)
% Using LDV to caliberate the accelerometer array
% Inputs:
%   1. 'data_path' - Path of the .bin file that stores the data
% Optional inputs:
%   2. 'd_rate_path' - Path of the .txt file that stores the data rate
%   3. 'is_disp' - Display signals from all accelerometers if set to 1
% Outputs:
%   1. 'acc_data' - Readed accelerometer data with unit 'g' (gravity)
%--------------------------------------------------------------------------
function [acc_data, t, Fs ] = readAccIII(data_path, d_rate_path, is_disp)
% Created on 09/05/2017 Based on 'AccIII_Display.m'
% Updated on 01/23/2018 Read AccIII (NoID data format)
%--------------------------------------------------------------------------
% Configuration
read_num = 46;
half_read = 0.5*read_num; % Must be a integer (= 23)

% Initialization
axis_label = {'X', 'Y', 'Z'};

% Acquire sampling frequency (From 'file_path2')
if nargin < 2
    Fs = 1285; % Default sampling frequency = 1600 Hz (accelerometer)
    disp('Unknown sampling frequency: set to 1285Hz by default');
else % Actual sampling frequency
    if ischar(d_rate_path)
        file_id1 = fopen(d_rate_path);
        samp_factor = textscan(file_id1, '%f'); % Read sampling frequency
        fclose(file_id1);
        Fs = samp_factor{1};
    elseif isnumeric(d_rate_path)
        if isempty(d_rate_path)
            Fs = 1285; 
            disp('Unknown sampling frequency: set to 1285Hz by default');
        else  
            Fs = d_rate_path;
            disp('Inputed sampling frequency manually');
        end
    end
end

if nargin < 3
    is_disp = 1;
end

% Import data (From 'file_path1')
file_id2 = fopen(data_path);
hex_data = fread(file_id2,'*ubit8');
fclose(file_id2);

read_byte_num = length(hex_data);
data_num = floor(read_byte_num/read_num) -1;
samp_num = floor(data_num/6); % Three axis X, Y and Z

T = 1/Fs; % Sampling time interval
t = (0:(samp_num-1))*T;
fprintf('Sampling time = %.2f secs, Sampling frequency = %.2f Hz\n',...
    t(end),Fs);

hex_data = hex_data(read_num + (1:(data_num*read_num)));
hex_data = double(reshape(hex_data, [read_num,data_num])); % Double

% Hex to decimal conversion------------------------------------------------
odd_ind = 1:2:read_num;
even_ind = 2:2:read_num;
acc_data = zeros(samp_num, read_num, 3);

wb_h = waitbar(0, 'O', 'Name','Converting from HEX to DEC...');
count = 0;
for i=1:samp_num
    waitbar(i/samp_num,wb_h,sprintf('Processing sample %d',i));
    
    % Odd number sensor (Pull up)
    for j=1:3
        count = count +1;
        for k=1:half_read
            acc_data(i,odd_ind(k),j) = 256*(hex_data(half_read+k,count))+...
                (hex_data(k,count)); % data[Low,High]
        end
    end
    
    % Even number sensor
    for j=1:3
        count = count +1;
        for k=1:half_read
            acc_data(i,even_ind(k),j) = 256*(hex_data(half_read+k,count))+...
                (hex_data(k,count)); % data[Low,High]
        end
    end
end
close(wb_h);

%=========================== Format correction ============================
negInd = find(acc_data > 32767); % Negative data
acc_data(negInd) = acc_data(negInd) - 65536;
disp('Format conversion completed.')
%--------------------------------------------------------------------------

%============================ Unit coversion ==============================
GSCALE = 0.00073; % 0.73 mg/digit
acc_data = GSCALE*acc_data;
%--------------------------------------------------------------------------

%% Analysis 
if is_disp    
    acc_ind = [1:9,11:19,21:29,31:39,41:46]; % Skip Acc 10,20,30,40
    
    % Raw signals------------------------------
    for ax = 1:3 % 1:X-axis, 2:Y-axis, 3:Z-axis
        figure('Position', get(0,'ScreenSize').*[10 50 0.95 0.8],...
            'Name',sprintf('%s-axis',axis_label{ax}))
        for k = 1:length(acc_ind)
            subplot(14,3,k)
            plot(t, acc_data(:,acc_ind(k),ax));
            ylabel(sprintf('%d',acc_ind(k)));
            xlim([t(1) t(end)])
            ylim([-16 16])
            %         ylim([-2 2])
            box off
            if k<42
                xticks([])
            end
        end
        xlabel('Time (Secs)')
    end
end
