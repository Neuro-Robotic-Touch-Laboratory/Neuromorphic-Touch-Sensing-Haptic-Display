function [C,acc] = computeconfusion(Indentations,Sn)
t1=Indentations.(Sn).T1;
t2=Indentations.(Sn).T2;
t=[t1; t2];

targets=t(:,1);
guesses=t(:,2);

C = confusionmat(targets,guesses); 
acc=100*sum(targets == guesses,'all')/numel(guesses);
end