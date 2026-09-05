# EventFlow

Front-end MVP untuk mengelola event, pendaftaran peserta, data pendaftar, dan presensi simulasi. Dibangun dengan HTML, CSS, dan JavaScript vanilla tanpa backend maupun dependensi eksternal.

## Menjalankan proyek

Buka `index.html` langsung di browser modern, atau jalankan server statis dari folder proyek:

```bash
python3 -m http.server 8000
```

Kemudian buka `http://localhost:8000`.

## Fitur

- Dashboard ringkasan event, pendaftar, kapasitas, dan presensi.
- CRUD event sisi-klien dengan status Draft atau Terbit.
- Form pendaftaran dengan validasi serta kode registrasi deterministik.
- Pencarian, filter, dan detail peserta.
- Check-in manual yang mencegah kode tidak valid, event tidak sesuai, dan presensi ganda.
- Tampilan responsif: drawer pada mobile, kartu data peserta pada layar kecil, dan fokus keyboard terlihat.

## Struktur

```text
index.html          Shell aplikasi dan dialog event
Assets/styles.css   Token serta komponen utama
Assets/polish.css   Penyelesaian responsif dan preferensi gerak
Assets/app.js       Data mock dan logika aplikasi
docs/               PRD, panduan UI, dan rencana implementasi
```

## Catatan

Semua data berada di memori browser selama halaman terbuka. Tidak ada autentikasi, API, database, pembayaran, atau QR scanner perangkat pada MVP ini.
