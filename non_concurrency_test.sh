mkdir non_concurrency_test
cd non_concurrency_test

g++ ../reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o non_concurrency_eval1 -std=c++11 -DTEST_DEF=1
g++ ../reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o non_concurrency_eval2 -std=c++11 -DTEST_DEF=2
g++ ../reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o non_concurrency_eval3 -std=c++11 -DTEST_DEF=3
g++ ../reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o non_concurrency_eval4 -std=c++11 -DTEST_DEF=4
g++ ../reader.cpp ../crc8.cpp ../lambertian.cpp ../is_available.cpp -o non_concurrency_eval5 -std=c++11 -DTEST_DEF=5


mkdir test_def1
cp ./non_concurrency_eval1 ./test_def1
cd ./test_def1
mkdir eval_data
./non_concurrency_eval1 &
sleep 2
cd ..

mkdir test_def2
cp ./non_concurrency_eval2 ./test_def2
cd ./test_def2
mkdir eval_data
./non_concurrency_eval2 &
sleep 2
cd ..

mkdir test_def3
cp ./non_concurrency_eval3 ./test_def3
cd ./test_def3
mkdir eval_data
./non_concurrency_eval3 &
sleep 2
cd ..

mkdir test_def4
cp ./non_concurrency_eval4 ./test_def4
cd ./test_def4
mkdir eval_data
./non_concurrency_eval4 &
sleep 2
cd ..

mkdir test_def5
cp ./non_concurrency_eval5 ./test_def5
cd ./test_def5
mkdir eval_data
./non_concurrency_eval5 &
sleep 2
cd ..
