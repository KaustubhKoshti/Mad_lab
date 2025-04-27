self.addEventListener('install', (event) => {
    console.log('Service Worker Installed');
  });
  
  self.addEventListener('activate', (event) => {
    console.log('Service Worker Activated');
  });
  
  self.addEventListener('fetch', (event) => {
    event.respondWith(fetch(event.request));
  });
  
  self.addEventListener('sync', (event) => {
    if (event.tag === 'syncData') {
      console.log('Sync event triggered');
      // Background sync logic here
    }
  });
  
  self.addEventListener('push', (event) => {
    const data = event.data.json();
    self.registration.showNotification(data.title, {
      body: data.body,
    });
  });
  