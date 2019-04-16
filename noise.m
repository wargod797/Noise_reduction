cd('d:\')
%img=imread('darsh.jpg')
webcamlist %shows the name of the webcam and pixel specification
cam = webcam('EasyCamera') %open the webcam and shows the complete specification but your camera name on bracket
preview(cam);
cam.resolution='160x120';
img = snapshot(cam);
b=imnoise(img,'gaussian',0.2);
c=imnoise(img,'salt & pepper',0.2)
d=imnoise(img,'poisson');
subplot(2,2,1), imshow(img);
subplot(2,2,2), imshow(b);
subplot(2,2,3), imshow(c);
subplot(2,2,4), imshow(d);
clear('cam')
