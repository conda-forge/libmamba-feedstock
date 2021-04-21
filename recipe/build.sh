mkdir build; cd build

if [[ "${target_platform}" == "linux-ppc64le" ]]; then
	NJOBS="-j2"
fi

cmake .. \
	${CMAKE_ARGS} \
	-DBUILD_SHARED=ON \
	-DBUILD_STATIC=OFF \
	-DBUILD_BINDINGS=OFF \
	-G "Ninja"

ninja install $NJOBS