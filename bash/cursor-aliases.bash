function cursor {
  (nohup /opt/cursor.appimage "$@" > /dev/null 2>&1 &)
}
