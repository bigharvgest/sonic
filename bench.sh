#!/usr/bin/env bash

pwd=$(pwd)

cd $pwd/encoder
go test -benchmem -run=^$ -benchtime=100000x -bench "^(BenchmarkEncoder_Generic_Sonic|BenchmarkEncoder_Generic_StdLib|BenchmarkEncoder_Generic_JsonIter|BenchmarkEncoder_Generic_GoJson|BenchmarkEncoder_Binding_Sonic|BenchmarkEncoder_Binding_StdLib|BenchmarkEncoder_Binding_JsonIter|BenchmarkEncoder_Binding_GoJson|BenchmarkEncoder_Parallel_Generic_Sonic|BenchmarkEncoder_Parallel_Generic_StdLib|BenchmarkEncoder_Parallel_Generic_JsonIter|BenchmarkEncoder_Parallel_Generic_GoJson|BenchmarkEncoder_Parallel_Binding_Sonic|BenchmarkEncoder_Parallel_Binding_StdLib|BenchmarkEncoder_Parallel_Binding_JsonIter|BenchmarkEncoder_Parallel_Binding_GoJson)$"

cd $pwd/decoder
go test -benchmem -run=^$ -benchtime=100000x -bench "^(BenchmarkDecoder_Generic_Sonic|BenchmarkDecoder_Generic_StdLib|BenchmarkDecoder_Generic_JsonIter|BenchmarkDecoder_Generic_GoJson|BenchmarkDecoder_Binding_Sonic|BenchmarkDecoder_Binding_StdLib|BenchmarkDecoder_Binding_JsonIter|BenchmarkDecoder_Binding_GoJson|BenchmarkDecoder_Parallel_Generic_Sonic|BenchmarkDecoder_Parallel_Generic_StdLib|BenchmarkDecoder_Parallel_Generic_JsonIter|BenchmarkDecoder_Parallel_Generic_GoJson|BenchmarkDecoder_Parallel_Binding_Sonic|BenchmarkDecoder_Parallel_Binding_StdLib|BenchmarkDecoder_Parallel_Binding_JsonIter|BenchmarkDecoder_Parallel_Binding_GoJson)$"

cd $pwd/ast
go test -benchmem -run=^$ -benchtime=100000x -bench "^(BenchmarkSearchOne_Gjson|BenchmarkSearchOne_Jsoniter|BenchmarkSearchOne_Sonic|BenchmarkSearchOne_Parallel_Gjson|BenchmarkSearchOne_Parallel_Jsoniter|BenchmarkSearchOne_Parallel_Sonic)$"

cd $pwd