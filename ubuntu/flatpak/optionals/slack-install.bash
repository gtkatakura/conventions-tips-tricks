green_text "Installing Slack (using flatpak)"
flatpak install flathub com.slack.Slack -y
flatpak override --user --env=TZ=America/Sao_Paulo com.slack.Slack

# como nao temos mais horario de verao, estou usando temporariamente
# esse TZ para o horario ficar correto, visto que o slack esta colocando
# +1hr como o horario de verao, entao preciso de um TZ com -1hr
# flatpak override --user --env=TZ=America/Campo_Grande com.slack.Slack

# flatpak uninstall --delete-data flathub com.slack.Slack -y
