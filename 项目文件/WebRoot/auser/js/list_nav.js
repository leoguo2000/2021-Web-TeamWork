var t;
t=outlookbar.addtitle('系统属性')
outlookbar.additem('系统属性',t,'/ershou/auser/index/sysPro.jsp')


t=outlookbar.addtitle('我发布的商品')
outlookbar.additem('发布商品',t,'/ershou/auser/goods/goodsAddByMe.jsp')
outlookbar.additem('我发布的商品',t,'/ershou/goodsManaByMe.action')


t=outlookbar.addtitle('我收藏的商品')
outlookbar.additem('我收藏的商品',t,'/ershou/jingpaiByMe.action')

t=outlookbar.addtitle('安全退出系统') 
outlookbar.additem('安全退出',t,'/ershou/userLogout.action')