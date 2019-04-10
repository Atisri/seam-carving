clc;close all;clear all
image=imread('photo6.jpg');
figure;imshow(image);
number=100;
counter=0;
imagecopy=image;

image2=rgb2gray(image);

%figure;imshow(image2);


while(counter<number)
image2=rgb2gray(image);
energyImage=energyCalculation(image2);
%figure;imshow(energyImage);



dynamicProg=findingSeam(energyImage);

finalImageVertical=backtrack(dynamicProg,image);

counter=counter+1
image=finalImageVertical;
end
figure;imshow(finalImageVertical);
imwrite(finalImageVertical,'photo6v.jpg');
counter=0;
number=50;

rotatedImage=rot90(finalImageVertical);
while(counter<number)
#image2H=rgb2gray(rotatedImage);
rotatedImageg=rgb2gray(rotatedImage);
energyImageH=energyCalculation(rotatedImageg);

dynamicProgH=findingSeam(energyImageH);
finalImageHorizontal=backtrack(dynamicProgH,rotatedImage);



#imageo=rotateAgain(finalImageHorizontal);

counter=counter+1
rotatedImage=finalImageHorizontal;
end
#image=imageo;

imageo=rotateAgain(finalImageHorizontal);
figure;imshow(imageo);
imwrite(imageo,'photo6h+v.jpg');
#figure;imshow(finalImageVertical);







