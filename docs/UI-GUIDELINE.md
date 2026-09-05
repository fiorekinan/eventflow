# UI Guideline — EventFlow

## 1. Arah Visual

Modern futuristik SaaS yang hangat dan percaya diri: permukaan gelap coklat espresso, aksen orange yang energik, serta kuning keemasan sebagai sorotan data penting. Kesan yang dicari adalah **event control center**—rapi, cepat dibaca, dan premium tanpa dekorasi berlebihan.

## 2. Sistem Warna

| Token | Nilai | Penggunaan |
| --- | --- | --- |
| Espresso | `#22150F` | Latar aplikasi / navigasi |
| Cocoa | `#3A2418` | Surface gelap |
| Cream | `#FFF7ED` | Teks utama pada gelap / latar terang |
| Orange | `#F97316` | CTA utama, status aktif |
| Amber | `#FBBF24` | Highlight, metrik, peringatan |
| Terracotta | `#B45309` | Aksen sekunder |
| Sand | `#E7D8C8` | Garis, teks sekunder |
| Success | `#22C55E` | Presensi berhasil |

Kontras teks harus memenuhi minimal WCAG AA. Orange dipakai untuk aksi utama; amber untuk informasi yang perlu perhatian, bukan sebagai teks panjang.

## 3. Tipografi dan Tata Letak

- Font: `Inter` atau fallback system sans-serif.
- Judul: 600–700 weight, tracking sedikit rapat.
- Isi: 14–16 px, line-height 1.5.
- Grid desktop: sidebar 248 px, area konten fleksibel, padding 32 px.
- Grid mobile: sidebar menjadi drawer; padding 16 px; tabel dapat menjadi kartu ringkas.
- Radius: 16 px pada panel, 12 px pada field dan tombol.

## 4. Komponen Inti

| Komponen | Ketentuan |
| --- | --- |
| Sidebar | Logo, workspace, navigasi utama, indikator halaman aktif orange |
| Stat card | Angka besar, label pendek, delta/indikator kecil; maksimum empat pada dashboard |
| Data table | Header tetap jelas, status berupa chip, aksi per baris tersembunyi secara ringkas |
| Tombol primer | Orange penuh, teks gelap, tinggi min. 40 px |
| Tombol sekunder | Transparan/cream dengan border sand |
| Input | Label di atas, helper/error di bawah, fokus orange dengan outline jelas |
| Status | Published=orange, Draft=sand, Hadir=hijau, Belum hadir=amber lembut |
| Toast | Muncul kanan bawah untuk aksi sukses/gagal, dapat ditutup |

## 5. Pola Interaksi

- Satu CTA primer paling dominan per layar (contoh: “Buat event”).
- Pencarian dan filter berada di atas data yang dipengaruhi.
- Konfirmasi hanya diperlukan untuk aksi destruktif; check-in menggunakan status sukses langsung dengan opsi batalkan singkat.
- Empty state menawarkan satu tindakan yang relevan.
- Loading menggunakan skeleton singkat; jangan tampilkan spinner penuh halaman untuk pembaruan lokal.

## 6. Preview Layar Utama

```text
┌─────────────────────────────────────────────────────────────────────┐
│ EVENTFLOW        Dashboard                         + Buat event     │
│ ─────────────    Selamat pagi, Nara                              ◉ │
│ Dashboard        Pantau event dan peserta Anda hari ini.            │
│ Event             [ 12 Event aktif ] [1.284 Pendaftar] [842 Hadir] │
│ Pendaftar                                                            │
│ Presensi          Event terdekat                  Presensi terbaru   │
│                  Tech Nexus Summit  |  18 Sep     ✓ Aisha — 09:42   │
│                  342 / 500 terdaftar              ✓ Bagas — 09:38   │
└─────────────────────────────────────────────────────────────────────┘
```

## 7. Aksesibilitas

- Semua aksi dapat dijalankan dengan keyboard dan memiliki fokus terlihat.
- Ikon selalu diberi label/tooltip bila tanpa teks.
- Jangan mengandalkan warna sebagai satu-satunya pembeda status.
- Target sentuh minimum 44 × 44 px pada mobile.
