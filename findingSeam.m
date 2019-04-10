## Author: Lenovo <Lenovo@DESKTOP-E7B8I67>
## Created: 2019-02-19

function seam=findingSeam(energyImage)

[rows cols]=size(energyImage);
seam=zeros(rows,cols);
seam(1,:)=energyImage(1,:);
for i=2:rows
    for j=1:cols
        if j-1<1
            seam(i,j)= energyImage(i,j)+min([seam(i-1,j),seam(i-1,j+1)]);
        elseif j+1>cols
            seam(i,j)= energyImage(i,j)+min([seam(i-1,j-1),seam(i-1,j)]);
        else
            seam(i,j)= energyImage(i,j)+min([seam(i-1,j-1),seam(i-1,j),seam(i-1,j+1)]);
        end
    end
end

endfunction
