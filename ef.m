returns=[0.1 0.15 0.2]
stds=[0.2 0.25 0.18]
correlations=[1 0.8 0.4;0.8 1 0.3;0.4 0.3 1]
covariances=corr2cov(stds,correlations)
portopt(returns,covariances,20)
hold on
rand('state',0)
weights=rand(1000,3)
total=sum(weights,2)
weights(:,1)=weights(:,1)./total
weights(:,2)=weights(:,2)./total
weights(:,3)=weights(:,3)./total
[portrisk,portreturn]=portstats(returns,covariances,weights)
plot(portrisk,portreturn,'.r')
title('mean-variances effecient frontier and rate of return of every portfolio')
xlabel('risk(variances)')
ylabel('expected return')
%portopt(returns,covariances,20)
%hold off
