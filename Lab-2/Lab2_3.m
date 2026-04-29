[file, folderPath] = uigetfile({'*.png;*.jpg;*.jpeg;*.bmp', 'All Image Files (*.png, *.jpg, *.bmp)'}, 'Select an image');

if isequal(file,0)
    disp('User cancelled the selection. Program terminated.');
else
    originalPath = fullfile(folderPath, file);
    img = imread(originalPath);

    disp('Available formats: jpg, bmp, tif, png, etc.');
    p = input('Which format do you want to save in? ', 's');
    outputName = ['converted_image.', p];

    imwrite(img, outputName);

    newImg = imread(outputName);
    figure;
    subplot(1, 2, 1);
    imshow(img);
    title(['Original: ', file]);

    subplot(1, 2, 2);
    imshow(newImg);
    title(['Converted Image (.', p, ')']);

    fprintf('\n--- Conversion Details ---\n');

    oldFileInfo = dir(originalPath);
    newFileInfo = dir(outputName);

    fprintf('Selected File: %s\n', fileName);
    fprintf('Original File Size: %.2f KB\n', oldFileInfo.bytes / 1024);
    fprintf('Converted File Size: %.2f KB\n', newFileInfo.bytes / 1024);

    newFileInfoDetail = imfinfo(outputName);
    fprintf('Confirmed Format in MATLAB: %s\n', newFileInfoDetail.Format);
    fprintf('Success! %s file has been saved.\n', outputName);
end