[file, path] = uigetfile({'*.jpg;*.png;*.bmp;*.tif', 'Image Files (*.jpg, *.png, *.bmp, *.tif)'}, 'Select an image');

if isequal(file, 0)
    disp('Please select!');
else
    fullPath = fullfile(path, file);
    img = imread(fullPath);
    figure('Name', 'Original Image');
    imshow(img);
    title('Selected Image');

    if size(img, 3) == 3
        gray_img = rgb2gray(img);
        figure('Name', 'Grayscale Image');
        imshow(gray_img);
        title('Gray Image');
    else
        gray_img = img;
        disp('Image is already Gray');
    end

    resized_img = imresize(img, 0.5);
    figure('Name', 'Resized Image');
    imshow(resized_img);
    title('50% Resized Image');

    imwrite(gray_img, 'selected_gray_output.png');
    disp('Gray-scale image saved');
end