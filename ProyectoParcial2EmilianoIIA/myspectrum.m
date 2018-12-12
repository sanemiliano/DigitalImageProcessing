function result = mynegative(image)
    image = rgb2gray(image);
    F = fft2(image);
    Fc = fftshift(F);
    result = log(1+abs(Fc));