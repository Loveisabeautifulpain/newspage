<!--

=========================================================
* Argon Dashboard - v1.1.2
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard
* Copyright 2020 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md)

* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->

@extends('admin.layout')
@section('content')
  <div class="main-content">
    <!-- Navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="dashboard.blade.php">Dashboard</a>
        <!-- Form -->
        <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
          <div class="form-group mb-0">
            <div class="input-group input-group-alternative">
              <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-search"></i></span>
              </div>
              <input class="form-control" placeholder="Search" type="text">
            </div>
          </div>
        </form>
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                  <img alt="Image placeholder" src="{{ asset('admin/assets/img/theme/team-4-800x800.jpg') }}">
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold">Manh Hung</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">Welcome!</h6>
              </div>
              <a href="{{ asset('admin/examples/profile.html') }}" class="dropdown-item">
                <i class="ni ni-single-02"></i>
                <span>My profile</span>
              </a>
              <a href="{{ asset('admin/examples/profile.html') }}" class="dropdown-item">
                <i class="ni ni-settings-gear-65"></i>
                <span>Settings</span>
              </a>
              <a href="{{ asset('admin/examples/profile.html') }}" class="dropdown-item">
                <i class="ni ni-calendar-grid-58"></i>
                <span>Activity</span>
              </a>
              <a href="{{ asset('admin/examples/profile.html') }}" class="dropdown-item">
                <i class="ni ni-support-16"></i>
                <span>Support</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="#!" class="dropdown-item">
                <i class="ni ni-user-run"></i>
                <span>Logout</span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- End Navbar -->
    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          <!-- Card stats -->

        </div>
      </div>
    </div>
      <div class="container-fluid mt--7">
      <div class="row mt-5">
        <div class="col-xl-12 mb-5 mb-xl-0">
          <div class="card shadow">
            <div class="card-header border-0">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">Posts</h3>
                </div>
                <div class="col text-right">
                  <a href="{{ url('add') }}" class="btn btn-sm btn-success">Add +</a>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <!-- Projects table -->
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Title</th>
                    <th scope="col">Category</th>
                    <th scope="col">Author</th>
                      <th>Tools</th>
                  </tr>
                </thead>
                <tbody>
                @foreach($posts as $key=>$item)
                  <tr>
                    <th scope="row">
                      {{ $item->id }}
                    </th>
                    <td>
                      {{ $item->title }}
                    </td>
                    <td>
                      {{ $item->name }}
                    </td>
                    <td>
                      {{ $item->display_name }}
                    </td>
                      <td>
                          <a href="{{ url('read/' . $item->id) }}" class="btn btn-info btn-sm">
                              <svg class="svg-inline--fa fa-eye" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!--! Font Awesome Pro 6.2.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. --><path d="M160 256C160 185.3 217.3 128 288 128C358.7 128 416 185.3 416 256C416 326.7 358.7 384 288 384C217.3 384 160 326.7 160 256zM288 336C332.2 336 368 300.2 368 256C368 211.8 332.2 176 288 176C287.3 176 286.7 176 285.1 176C287.3 181.1 288 186.5 288 192C288 227.3 259.3 256 224 256C218.5 256 213.1 255.3 208 253.1C208 254.7 208 255.3 208 255.1C208 300.2 243.8 336 288 336L288 336zM95.42 112.6C142.5 68.84 207.2 32 288 32C368.8 32 433.5 68.84 480.6 112.6C527.4 156 558.7 207.1 573.5 243.7C576.8 251.6 576.8 260.4 573.5 268.3C558.7 304 527.4 355.1 480.6 399.4C433.5 443.2 368.8 480 288 480C207.2 480 142.5 443.2 95.42 399.4C48.62 355.1 17.34 304 2.461 268.3C-.8205 260.4-.8205 251.6 2.461 243.7C17.34 207.1 48.62 156 95.42 112.6V112.6zM288 80C222.8 80 169.2 109.6 128.1 147.7C89.6 183.5 63.02 225.1 49.44 256C63.02 286 89.6 328.5 128.1 364.3C169.2 402.4 222.8 432 288 432C353.2 432 406.8 402.4 447.9 364.3C486.4 328.5 512.1 286 526.6 256C512.1 225.1 486.4 183.5 447.9 147.7C406.8 109.6 353.2 80 288 80V80z"/></svg>
                          </a>
                          <a href="{{ url('edit/' . $item->id) }}" class="btn btn-primary btn-sm">
                              <svg class="svg-inline--fa fa-pen-to-square" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="pen-to-square" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.8 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160V416c0 53 43 96 96 96H352c53 0 96-43 96-96V320c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V160c0-17.7 14.3-32 32-32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H96z"></path></svg><!-- <span class="fa fa-edit"></span> Font Awesome fontawesome.com -->
                          </a>
                          <a href="{{ url('delete/' . $item->id) }}" class="btn btn-danger btn-sm del-post-list" data-id="">
                              <svg class="svg-inline--fa fa-trash" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="trash" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M135.2 17.7L128 32H32C14.3 32 0 46.3 0 64S14.3 96 32 96H416c17.7 0 32-14.3 32-32s-14.3-32-32-32H320l-7.2-14.3C307.4 6.8 296.3 0 284.2 0H163.8c-12.1 0-23.2 6.8-28.6 17.7zM416 128H32L53.2 467c1.6 25.3 22.6 45 47.9 45H346.9c25.3 0 46.3-19.7 47.9-45L416 128z"></path></svg><!-- <span class="fa fa-trash"></span> Font Awesome fontawesome.com -->
                          </a>
                      </td>
                  </tr>
                @endforeach
{{--                  <tr>--}}
{{--                      <th scope="row">--}}
{{--                          /argon/--}}
{{--                      </th>--}}
{{--                      <td>--}}
{{--                          4,569--}}
{{--                      </td>--}}
{{--                      <td>--}}
{{--                          340--}}
{{--                      </td>--}}
{{--                      <td>--}}
{{--                          <i class="fas fa-arrow-up text-success mr-3"></i> 46,53%--}}
{{--                      </td>--}}
{{--                  </tr>--}}
                </tbody>
              </table>
            </div>
          </div>
        </div>
{{--        <div class="col-xl-4">--}}
{{--          <div class="card shadow">--}}
{{--            <div class="card-header border-0">--}}
{{--              <div class="row align-items-center">--}}
{{--                <div class="col">--}}
{{--                  <h3 class="mb-0">Categories</h3>--}}
{{--                </div>--}}
{{--                <div class="col text-right">--}}
{{--                  <a href="#!" class="btn btn-sm btn-primary">See all</a>--}}
{{--                </div>--}}
{{--              </div>--}}
{{--            </div>--}}
{{--            <div class="table-responsive">--}}
{{--              <!-- Projects table -->--}}
{{--              <table class="table align-items-center table-flush">--}}
{{--                <thead class="thead-light">--}}
{{--                  <tr>--}}
{{--                    <th scope="col">Referral</th>--}}
{{--                    <th scope="col">Visitors</th>--}}
{{--                    <th scope="col"></th>--}}
{{--                  </tr>--}}
{{--                </thead>--}}
{{--                <tbody>--}}
{{--                  <tr>--}}
{{--                    <th scope="row">--}}
{{--                      Facebook--}}
{{--                    </th>--}}
{{--                    <td>--}}
{{--                      1,480--}}
{{--                    </td>--}}
{{--                    <td>--}}
{{--                      <div class="d-flex align-items-center">--}}
{{--                        <span class="mr-2">60%</span>--}}
{{--                        <div>--}}
{{--                          <div class="progress">--}}
{{--                            <div class="progress-bar bg-gradient-danger" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>--}}
{{--                          </div>--}}
{{--                        </div>--}}
{{--                      </div>--}}
{{--                    </td>--}}
{{--                  </tr>--}}
{{--                  <tr>--}}
{{--                    <th scope="row">--}}
{{--                      Facebook--}}
{{--                    </th>--}}
{{--                    <td>--}}
{{--                      5,480--}}
{{--                    </td>--}}
{{--                    <td>--}}
{{--                      <div class="d-flex align-items-center">--}}
{{--                        <span class="mr-2">70%</span>--}}
{{--                        <div>--}}
{{--                          <div class="progress">--}}
{{--                            <div class="progress-bar bg-gradient-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%;"></div>--}}
{{--                          </div>--}}
{{--                        </div>--}}
{{--                      </div>--}}
{{--                    </td>--}}
{{--                  </tr>--}}
{{--                  <tr>--}}
{{--                    <th scope="row">--}}
{{--                      Google--}}
{{--                    </th>--}}
{{--                    <td>--}}
{{--                      4,807--}}
{{--                    </td>--}}
{{--                    <td>--}}
{{--                      <div class="d-flex align-items-center">--}}
{{--                        <span class="mr-2">80%</span>--}}
{{--                        <div>--}}
{{--                          <div class="progress">--}}
{{--                            <div class="progress-bar bg-gradient-primary" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"></div>--}}
{{--                          </div>--}}
{{--                        </div>--}}
{{--                      </div>--}}
{{--                    </td>--}}
{{--                  </tr>--}}
{{--                  <tr>--}}
{{--                    <th scope="row">--}}
{{--                      Instagram--}}
{{--                    </th>--}}
{{--                    <td>--}}
{{--                      3,678--}}
{{--                    </td>--}}
{{--                    <td>--}}
{{--                      <div class="d-flex align-items-center">--}}
{{--                        <span class="mr-2">75%</span>--}}
{{--                        <div>--}}
{{--                          <div class="progress">--}}
{{--                            <div class="progress-bar bg-gradient-info" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;"></div>--}}
{{--                          </div>--}}
{{--                        </div>--}}
{{--                      </div>--}}
{{--                    </td>--}}
{{--                  </tr>--}}
{{--                  <tr>--}}
{{--                    <th scope="row">--}}
{{--                      twitter--}}
{{--                    </th>--}}
{{--                    <td>--}}
{{--                      2,645--}}
{{--                    </td>--}}
{{--                    <td>--}}
{{--                      <div class="d-flex align-items-center">--}}
{{--                        <span class="mr-2">30%</span>--}}
{{--                        <div>--}}
{{--                          <div class="progress">--}}
{{--                            <div class="progress-bar bg-gradient-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>--}}
{{--                          </div>--}}
{{--                        </div>--}}
{{--                      </div>--}}
{{--                    </td>--}}
{{--                  </tr>--}}
{{--                </tbody>--}}
{{--              </table>--}}
{{--            </div>--}}
{{--          </div>--}}
{{--        </div>--}}
      </div>
      <!-- Footer -->

  <!--   Core   -->
@endsection
