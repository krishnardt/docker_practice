here code is the destination location in docker container.


docker run -p 8000:8000 test_doc
8000:8000 mean --> lhs port refers to host port through which the incoming connections enter into server
rhs port refers to container port through which requests hit the container.

