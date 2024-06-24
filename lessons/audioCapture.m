function [voice] = audioCapture(fs,t)
    
    N=8;
    C=1;
    audioObject=audiorecorder(fs,N,C);
    recordblocking(audioObject,t);
    voice=getaudiodata(audioObject);
    
    subplot(211), plot(voice);
    subplot(212)
    L=length(voice);
    x=round(L/2)-49:round(L/2)+50;
    y=voice(round(L/2)-49:round(L/2)+50)
    stem(x,y);
end