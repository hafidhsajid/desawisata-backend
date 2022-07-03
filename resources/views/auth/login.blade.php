<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    {{-- <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"></script> --}}
      <script src="https://kit.fontawesome.com/ad6395cc9e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="{{asset('auth/style.css')}}" />
    <link rel="stylesheet" href="{{asset('./vendor/depan/css/style.css')}}" />
    {{-- <link rel="stylesheet" href="{{ asset('assets/vendors/toastify/toastify.css') }}"> --}}
        {{-- message toastr --}}
        {{-- <link rel="stylesheet" href="{{asset('assets/css/toastr.min.css'}}"> --}}
        {{-- <script src="http://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script> --}}
        <script src="{{asset('assets/js/toastr.min.js')}}"></script>
    <title>Sign in & Sign up Form</title>
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/images/favicon/lungo.png') }}">
  </head>
  <link rel="stylesheet" href="{{ asset('assets/css/toastr.min.css') }}">
<script src="{{ asset('js/jquery.min.js') }}"></script>
<script src="{{ asset('assets/js/toastr.min.js') }}"></script>

{!! Toastr::message() !!}
@foreach ($errors->all() as $error)
{!!  Toastr::error($error, 'Error', ['options']) !!}
@endforeach
  <body>
    <div class="container">

      <div class="forms-container">
        <div class="signin-signup">
          <form method="POST" action="{{ route('login') }}" class="sign-in-form">
            @csrf
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              {{-- <input type="text" placeholder="Username" /> --}}
              <input placeholder="Email" id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              {{-- <input type="password" placeholder="Password" /> --}}
              <input placeholder="Password" id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">

            </div>
            <input type="submit" id="basic" value="Login" class="btn solid" />

            @error('email')
            <span class="invalid-feedback" role="alert">

              <strong>{{ $message }}</strong>
              {{-- {!! Toastr::error('message', '$message', ['options']) !!} --}}
            </span>
            @enderror
            @error('password')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
              @enderror
            {{-- <p class="social-text">Or Sign in with social platforms</p> --}}
            <div class="social-media">
                @if (Route::has('password.request'))
                <a   href="{{ route('password.request') }}" > Lupa Password?</a>

               @endif

            </div>
          </form>


          <form method="POST" action="{{ route('register') }}" class="sign-up-form">
            @csrf
            <h2 class="title">Daftar</h2>
            <div class="input-field">
                {{-- <input hidden placeholder="image" id="image" type="text" class="form-control @error('image') is-invalid @enderror" name="image" value="{{ asset('./vendor/depan/images/cust.png') }}" required > --}}
              <i class="fas fa-user"></i>
              <input placeholder="Nama" id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input placeholder="Email" id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

              @error('email')
                  <span class="invalid-feedback" role="alert" >
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input placeholder="Password" id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

              @error('password')
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
            </div>
            <div class="input-field">
                <i class="fas fa-lock"></i>
                <input placeholder="Konfirmasi Password " id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">

              </div>
              <div class="input-field">
                <i class="fas fa-phone-alt"></i>
                <input placeholder="Nomor Telepon" id="telp" type="telp" class="form-control @error('telp') is-invalid @enderror" name="telp" required autocomplete="telp">

                @error('telp')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
              </div>

              <input type="submit" class="btn" value="Sign up" />
            {{-- <p class="social-text">Or Sign up with social platforms</p> --}}
            {{-- <div class="">

                 @if (Route::has('password.request'))
                 <a   href="{{ route('password.request') }}" > Lupa Password?</a>

                @endif --}}

              {{-- <a href="#" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a> --}}
            {{-- </div> --}}
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Tidak memiliki akun ?</h3>
            <p>

              Mari daftar ! :)
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Daftar
            </button>
            <p>
                or
            </p>
            <button class="btn transparent" >
                <a  style="text-decoration:none" href="{{ url('/') }}" class="btn btn-light-secondary me-1 mb-1"> Back to App</a>

              </button>
          </div>
          <img src="{{asset('auth/img/log.svg')}}" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>Sudah memiliki akun ?</h3>
            <p>
              Lets login :)
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
            <p>
                or
            </p>
            <button class="btn transparent" >
                <a  style="text-decoration:none" href="{{ url('/') }}" class="btn btn-light-secondary me-1 mb-1"> Back to App</a>
                {{-- <a  style="text-decoration:none" href="{{ url('/') }}" class="btn btn-light-secondary me-1 mb-1"> Back to App</a> --}}

              </button>

          </div>
          <img src="{{asset('auth/img/register.svg')}}" class="image" alt="" />
        </div>
      </div>
    </div>
    {{-- <script src="{{ asset('assets/vendors/toastify/toastify.js') }}"></script>
    <script src="{{ asset('assets/js/extensions/toastify.js') }}"></script> --}}
    <script src="{{asset('auth/app.js')}}"></script>
  </body>
</html>

