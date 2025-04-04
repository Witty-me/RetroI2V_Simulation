mkdir concurrency_test
cd concurrency_test

g++ ../con_reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o concurrency_eval1 -std=c++11 -DTEST_DEF=1
g++ ../con_reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o concurrency_eval2 -std=c++11 -DTEST_DEF=2
g++ ../con_reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o concurrency_eval3 -std=c++11 -DTEST_DEF=3


mkdir test_def1
cp ./concurrency_eval1 ./test_def1
cd ./test_def1
mkdir eval_data
./concurrency_eval1 &
sleep 2
cd ..

mkdir test_def2
cp ./concurrency_eval2 ./test_def2
cd ./test_def2
mkdir eval_data
./concurrency_eval2 &
sleep 2
cd ..

mkdir test_def3
cp ./concurrency_eval3 ./test_def3
cd ./test_def3
mkdir eval_data
./concurrency_eval3 &
sleep 2
cd ..
