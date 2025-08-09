function main()
clc;clear;
Datasets={'colon','lymphoma','GLIOMA','DLBCL','9_Tumor','Tox_171','Prostate_GE','leukemia','CNS','Adenoma','ALLAML','Nci9','Arcene','Brain_Tumor_2','CLL_SUB_111','ALL3','ALL4','ovarian','SMK_CAN_187','GLI_85','Gastric','GLA_BRA_180','Stroke'};
for index=1:length(Datasets)
    data=Datasets{index};
    %file=strcat(data,".mat")
    load(strcat(data,".mat"));
    num=unique(Y);
    Y(find(Y==1))=0
    Y(find(Y==(size(num,1))))=1
    % size(find(Y==1),1);
    % matr=zeros(size(num,1));
    % for i=1:size(num,1)
    %    matr(i,i)=size(find(Y==i),1);
    % end
    % matr./size(Y,1)./0.01
end
end