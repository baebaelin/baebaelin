load gp56;
price56=mean(gp56);
return56=price2ret(gp56);
yxcs=10;
return56p(yxcs)=0;
for i=1:yxcs
    w56=rand(56,1);
    w56=w56.*sign(w56-0.5);
    w56=w56/sum(w56);
    return56p(yxcs)=sum(return56)/99*w56;
end
aita=cov(return56);
%%计算非系统风险
sumfxt=0;
for i=1:56
    sumfxt=sumfxt+aita(i,i)*w56(i)*w56(i);
end
%%计算总风险
sumzfx=w56'*aita*w56;
%%计算系统性风险
sumxt=sumzfx-sumfxt;