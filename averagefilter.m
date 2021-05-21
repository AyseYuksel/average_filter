picture=imread('coins.jpg');
graypic=rgb2gray(picture);


%7x7 average mask
mask=ones(7);
maskK=49;

%the difference is the value in the middle of the matrix
difference=(7-1)/2;

copy=graypic;

%noisepic size -> 247x495

for i=(difference+1):(247-difference-1)
    for j=(difference+1):(495-difference-1)
        %ROI=region of interest
        ROI=graypic(i-difference:i+difference,j-difference:j+difference);
        copy(i,j)=sum(sum(ROI.*mask))/maskK;
    end
end
imshow(copy)