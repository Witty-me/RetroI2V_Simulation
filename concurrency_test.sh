mkdir concurrency_test
cd concurrency_test

g++ ../con_reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o concurrency_eval1 -std=c++11 -DTEST_DEF=1


mkdir test_def1
cp ./concurrency_eval1 ./test_def1
cd ./test_def1
mkdir eval_data
./concurrency_eval1 &
sleep 2
cd ..

