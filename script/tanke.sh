#!/usr/bin/env bash



script_get() {
    print_massage "不用下载" "Do not download"
}

script_install() {
    if [[ -f /usr/local/bin/tanke ]];then
        print_massage "1.检测到当前系统已安装" "1.Detected that the current system is installed"
        exit
    fi
    
    test_bin tanke

	print_massage "tanke安装完成" "The tanke is installed"
	print_massage "安装目录：/usr/local/bin/tanke" "Install Dir：/usr/local/bin/tanke"
	print_massage "使用：tanke" "Use：tanke"
}

script_remove() {
	rm -rf /usr/local/bin/tank
    
    [ -f /usr/local/bin/tank ] && print_error "1.tank未成功删除，请检查脚本" "1.tank unsuccessfully deleted, please check the script" || print_massage "tank卸载完成！" "tank Uninstall completed！"
}

script_info() {
	print_massage "名字：tank" "Name：tank"
	print_massage "版本：1.2" "Version：1.2"
	print_massage "介绍：小坦克游戏" "Introduction: Small tank games"
    print_massage "作者：日行一善" "do one good deed a day"
    print_massage "使用说明：当前功能不完善，只有玩家，可以自定义地图" "Instructions for use: The current function is not perfect, only the player can customize the map"
}
