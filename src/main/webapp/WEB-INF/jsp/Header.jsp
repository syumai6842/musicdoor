<nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top pl-2">
  <a href="#" class="navbar-brand ml-2 mb-0 h1">
    MUSICdoor
  </a>

  <!--Search-->
  <div class="justify-content-center">
    <form action="musicdoor/result" method="post" class="d-flex form-inline">
      <input type="text" class=" form-control form-control-sm" placeholder="Search" name="searchwords">
      <input type="submit" class="btn btn-secondary my-1" value="Q">
    </form>
  </div>

  <!--menu-->
  <button type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" class="navbar-toggler" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation" >
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a href="#" class="nav-link dropdown">
          Home
        </a>
      </li>
      <li class="nav-item active">
        <a href="#" class="nav-link dropdown">
          Account
        </a>
      </li>
      <li class="nav-item active">
        <a href="#" class="nav-link dropdown">
          bookmark
        </a>
      </li>
    </ul>
  </div>
</nav>