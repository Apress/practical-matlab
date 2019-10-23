%Example10p6
%This code changes pixel values in RGB
[RGB]=imread('Cowboys.png');
[Row,Col,ind]=size(RGB);
for i=1:ind
    for k=1:Row
        for m=1:Col
            if RGB(k,m,i)>=30 && RGB(k,m,i)<=150
                RGB(k,m,i)=1;
            end
        end
    end
end
imshow(RGB)