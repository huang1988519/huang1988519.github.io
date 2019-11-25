default:
	@echo "make server: 启动server预览"
	@echo "make clean: 清理hexo缓存"
	@echo "make git-reset: git reset --hard"
	@echo "make gs: hexo g && hexo server"
	@echo "make deploy: hexo 发布"
	@echo "make debug: hexo 开启debug模式"
	@echo "make safe: hexo --safe，打开安全模式，在插件等不可用时调用"
update:
	git stash
	git checkout hexo
	git pull
	git checkout master
	git pull
	git checkout hexo
	git stash pop
server:
	hexo server
# 清理hexo 缓存	
clean:
	echo 'hexo clean'
	hexo clean
git-reset:
	git reset --hard
gs:
	hexo g
	hexo server
deploy:
	echo '生成&发布'
	hexo g
	hexo deploy

debug:
	hexo --debug
safe:
	hexo --safe
