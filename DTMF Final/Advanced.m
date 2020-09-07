%#1
X=fft8;

%////
%#2
ab=abs(X(1:600));
E=pow2(ab);


%////
%#3
[a,b]=max(E)
w=(b-1)./length(X) .*2.*pi
E(1,b)=0;
[a,b]=max(E)
w=(b-1)./length(X) .*2.*pi


%////
%#4
%NO
%But they are so close to given frequencies.The reason is that we dont have
%single frequency.Every given frequencies are the average of an interval
%and detected fricuencies are exacly in that intervals which are known by
%their mid frequencies.