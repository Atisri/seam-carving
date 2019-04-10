## Author: Lenovo <Lenovo@DESKTOP-E7B8I67>
## Created: 2019-02-19

function finalImage=backtrack(seam,image);

[rows cols dim]=size(seam);

vector=zeros(rows,1);
[value index]=min(seam(rows,:));
vector(rows)=value;
j=index;
#number=1;
#counter=0;
whiteLine(:,:,:)=image(:,:,:);
#while(counter<number)
for i=rows:-1:2
     
    if j-1<1
        vector(i-1)= min([seam(i-1,j),seam(i-1,j+1)]);
        
        if(vector(i-1)==seam(i-1,j+1))
            j=j+1;
        end 
        whiteLine(i,j,1)=255;
        
    elseif j+1>cols
        vector(i-1)= min([seam(i-1,j-1),seam(i-1,j)]);
        if(vector(i-1)==seam(i-1,j-1))
            j=j-1;
        end
        whiteLine(i,j,1)=255; 
    else
        vector(i-1)= min([seam(i-1,j-1),seam(i-1,j),seam(i-1,j+1)]);
        if(vector(i-1)==seam(i-1,j-1))
            j=j-1;
        end
        if (vector(i-1)==seam(i-1,j+1))
            j=j+1;
        end
        whiteLine(i,j,1)=255; 
    
   end
   
  
end
#counter =counter +1;

for i=1:rows 
  flag=0 ;  
  for j=1:cols-1  
    if flag==0;
    if whiteLine(i,j,1)==255;
      pos=j;
      
    for k=pos:cols-1  
      image(i,k,:)=image(i,k+1,:);
    end
     flag=1;
    end
  end
  end
end

cols=cols-1;
finalImage=zeros(rows,cols,3); 
for i=1:rows   
  for j=1:cols
    finalImage(i,j,:)=image(i,j,:);
  end
end



#figure;imshow(whiteLine);
finalImage=uint8(finalImage);

endfunction
