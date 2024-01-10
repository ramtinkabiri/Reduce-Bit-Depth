I_8bit = imread('cameraman.tif');
I_8bit = double(I_8bit);
f2j = @(f,J) max(min(round(J*(f-1/(2*J))),J-1),0);
j2r = @(j,J) (j+1/2)/J;

figure
cnt = 0;
for J= [256 128 64 16 4 2]
    I1 = j2r(I_8bit,256);
    I2 = f2j(I1,J);
    cnt = cnt+1;
    subplot(2,3,cnt);
    imshow(I2,[0 J-1])
    title(sprintf('%d-level',J))
end