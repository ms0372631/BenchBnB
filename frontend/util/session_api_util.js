export const signup = (user) => (
  $.ajax({
    method: 'POST',
    url: '/api/users',
    data: {user}
  })
);

export const login = (user) => (
  $.ajax({
    method: 'POST',
    url: '/api/session',
    date: {user}
  })
);

export const logout = () => (
  $.ajax({
    method: 'DELETE',
    url: '/api/session'
  })
);