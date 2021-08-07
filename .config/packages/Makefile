PACKAGEDIR := jared-xdg-vars

jared-xdg-vars-1-1-any.pkg.tar.zst: \
	$(PACKAGEDIR)/50-xdg.sh \
	$(PACKAGEDIR)/PKGBUILD \
	$(PACKAGEDIR)/zshenv

	cd "${XDG_CONFIG_HOME}"/packages/${PACKAGEDIR} \
		&& env PKGDEST="${XDG_CONFIG_HOME}"/packages makepkg

jared.db jared.files: jared-xdg-vars-1-1-any.pkg.tar.zst
	repo-add jared.db.tar.gz jared-xdg-vars-1-1-any.pkg.tar.zst

clean:
	rm -f jared.db jared.files jared.db.tar.gz jared.files.tar.gz
	rm -f jared-xdg-vars-1-1-any.pkg.tar.zst
	rm -f *.old
	rm -rf jared-xdg-vars/src
	rm -rf jared-xdg-vars/pkg
