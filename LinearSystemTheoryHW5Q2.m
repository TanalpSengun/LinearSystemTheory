

% author: Tanalp Þengün
% Homework 5 Question 2 :
% Cholesky Factorization


% I cleared the variables
clc;
clearvars;

%I created a random positive definite matrix.
A_real= [ 18  22   54   42; 22  70   86   62; 54  86  174  134 ;42  62  134  106 ];

%I used the function described below
L= cholev(A_real);

%I checked whether A can be reconstrucble from the Cholesky Defactorization
A_fake= L*L';
% In the end I checked the A real and A fake and they are the same.

%My cholesky factorization function

function L = cholev(A)

%r is for the row
r=1;
%c is for the column
c=1;

%Look at the dimensions of the matrix A

[m,n]=size(A);

% Create an empty matrix with the known size

L=zeros(m,m);

%To handle the indexes start from the row and column



for i=1:m
    % As described in the class 1x1 matrix will give automatically the result
    % with the squareroot operation.
    a11=sqrt(A(1,1));
    
    
    %L11.
    L(r,c)=a11;
    
    if(m~=1)
        
        %the first column other than 1,1 element.
        Vex=A(2:m,1)/a11;
        
        
        L(r+1:end,c)=Vex;
        
        %A-n-1 th index.
        
        A_ONE_DOWN=A(2:m,2:m); 
        A=(A_ONE_DOWN-Vex*Vex');
        
        %Take the dimensions again.
        [m,n]=size(A);
        
        %Increase the rows and the columns
        r=r+1;
        c=c+1;
    end
    
end


end

