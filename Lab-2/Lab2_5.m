[file, path] = uigetfile({'.jpg;.png;*.bmp'}, 'Select an Image');
img = imread(fullfile(path, file));

if size(img, 3) == 3
    img = rgb2gray(img);
end

high_pixel = max(img(:));
low_pixel = min(img(:));

imshow(img);
title(['Max: ', num2str(high_pixel), ' | Min: ', num2str(low_pixel)]);

fprintf('File: %s\n', file);
fprintf('Highest Pixel Value: %d\n', high_pixel);
fprintf('Lowest Pixel Value: %d\n', low_pixel);