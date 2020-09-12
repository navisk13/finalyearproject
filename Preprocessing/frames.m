vid=VideoReader('vid1.WMV');
numframes=vid.NumberOfFrames;
n=numframes;

for i=1:n
frame=read(vid,i);
imwrite(frame,['Image' int2str(i), '.jpg']);
im(i)=image(frame);
end