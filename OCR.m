% Load the image
image = imread("ocr_image.png");

% Perform OCR.
results = ocr(image);

% Get the recognized words with a confidence above 70%
words = results.Words(results.WordConfidences > 0.7);

% Output the detected words in the terminal
disp(words)

% Impose the detected words onto the original image
figure('NumberTitle', 'off', 'Name', 'OCR Results')
imshow(image)
text(1500, 250, words, "FontSize", 15, BackgroundColor=[1 1 1])