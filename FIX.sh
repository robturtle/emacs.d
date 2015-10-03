fname='python-mode'
f=`find elpa -name "${fname}.el"`
patch -p0 -N --dry-run --silent "$f" < "${fname}".patch 2>/dev/null
if [[ "$?" == "0" ]]; then
    patch -p0 -N "$f" < "${fname}".patch
fi
