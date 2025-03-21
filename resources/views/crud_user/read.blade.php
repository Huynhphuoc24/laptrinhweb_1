@extends('dashboard')

@section('content')
<main class="user-detail">
    <div class="container">
        <h2 class="text-center mb-4">User  Details</h2>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white">
                        <h5 class="mb-0">User  Information</h5>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th>ID</th>
                                    <td>{{ $messi->id }}</td>
                                </tr>
                                <tr>
                                    <th>Name</th>
                                    <td>{{ $messi->name }}</td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>{{ $messi->email }}</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="d-flex justify-content-between mt-3">
                            <a href="{{ route('user.updateUser', ['id' => $messi->id]) }}" class="btn btn-warning">Edit</a>
                            <a href="#" class="btn btn-danger" onclick="confirmDelete('{{ route('user.deleteUser', ['id' => $messi->id]) }}')">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<script>
    function confirmDelete(url) {
        if (confirm('Are you sure you want to delete this user?')) {
            window.location.href = url; // Redirect to the delete URL
        }
    }
</script>
@endsection