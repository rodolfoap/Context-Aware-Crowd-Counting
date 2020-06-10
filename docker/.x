execute(){
	./cli.bash
}
build(){
	./build.bash
}
case "$1" in
	b)
		build
	;;
	e)
		vi -p Dockerfile build.bash cli.bash launch.bash
		build
		execute
	;;
	"")
		execute
	;;
esac
