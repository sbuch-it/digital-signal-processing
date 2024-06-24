function [h, H, y] = FIRbandpass(fs, fc, L, x, n)
    % The function implements the impulse response
    % of a FIR bandpass filter for a given frequency and
    % perform the filtering of an input signal
    %
    % fs: sample frequency
    % fc: center frequency
    % L: length of the filter
    % x: input signal of the filter
    % n: interval where input signal is defined
    %
    % h: impulse response of the FIR bandpass filter
    % H: frequency response of the FIR bandpass filter
    % y: output signal of the filter

    omega = -pi:1/1000:pi; % digital frequencies

    % Responses for each central frequency
    for i = 1:length(fc)
        % Impulse response
        h(i,:) = (2/L)*cos(2*pi*fc(i)*(0:L-1)/fs);
        % Frequency response
        H(i,:) = freqz(h(i,:),1,omega);
    end
    
    % Plot of the magnitudes for each frequency response
    subplot(211), plot(omega,abs(H(1,:)));
    if length(fc) > 1
        hold on
        for i = 2:length(fc)
            plot(omega, abs(H(i,:)));
        end
        hold off
    end
    title('Magnitudes for each frequency response');

    % Outputs for each central frequency
    for i = 1:length(fc)
        y(i,:) = filter(h(i,:), 1, x);
    end

    % Plot of the outputs for each central frequency
    subplot(212), plot(n,y(1,:));
    if length(fc) > 1
        hold on
        for i = 2:length(fc)
            plot(n, y(i,:));
        end
        hold off
    end
    title('Outputs for each central frequency');
    
end