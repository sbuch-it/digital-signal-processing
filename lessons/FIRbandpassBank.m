function [h, H] = FIRbandpassBank(fs, fc, L)
    % The function implements the impulse response
    % of a FIR bandpass filter for a given frequency and
    % perform the filtering of an input signal
    %
    % fs: sample frequency
    % fc: center frequency
    % L: length of the filter
    %
    % h: impulse response of the FIR bandpass filter
    % H: frequency response of the FIR bandpass filter

    omega = -pi:1/1000:pi; % digital frequencies
    for i = 1:length(fc)
        h(i,:) = (2/L)*cos(2*pi*fc(i)*(0:L-1)/fs);
        H(i,:) = freqz(h(i,:),1,omega);
    end
    figure
    plot(omega,abs(H(1,:)));
    if length(fc)>1
        hold on
        for i = 2:length(fc)
            plot(omega,abs(H(i,:)));
        end
        hold off
end