require 'fileutils'

FileUtils.rm_rf("repo")
FileUtils.mkdir("repo")

FileUtils.cd("repo") do
  `git init`
  `git config user.name "Lua"`
  `git config user.email "lua@lua.org"`
end

version_list = ""
last_version = nil
branch_base = nil
in_branch = false
DATA.each_line do |line|
  date, version, branch = line.split

  if date && version
    print "#{version}\r"

    version_list << "    " if branch == "*"
    version_list << "* [#{version}](https://github.com/paigeruten/lua-all/tree/#{version}) (#{date})\n"

    in_branch = true if branch == "*"

    Dir["repo/*"].each do |f|
      FileUtils.rm_rf(f)
    end

    Dir["lua-#{version}/*"].each do |f|
      FileUtils.cp_r(f, "repo/")
    end

    FileUtils.cd("repo") do
      if in_branch && branch != "*"
        in_branch = false
        `git reset #{branch_base}`
      elsif last_version
        `git reset #{last_version}`
      end

      `git add *`
      `git commit -a -m "Lua #{version}" --date="#{date}T00:00:00Z"`
      `git tag #{version}`
      `git branch -f branch-from-#{branch_base}` if in_branch
    end

    last_version = version
    branch_base = version unless in_branch
  end
end
print "\n"

Dir["repo/*"].each do |f|
  FileUtils.rm_rf(f)
end

["makerepo.rb", "COPYRIGHT"].each do |f|
  FileUtils.cp_r(f, "repo/")
end

readme = File.read("README.md").sub("{{versions}}") { version_list.chomp }
File.write("repo/README.md", readme)

FileUtils.cd("repo") do
  `git config --unset user.name`
  `git config --unset user.email`
  `git reset #{branch_base}`
  `git add *`
  `git commit -a -m "-"`
end

__END__
1993-07-28 1.0
1994-07-08 1.1
1995-02-07 2.1
1995-11-28 2.2
1996-05-14 2.4
1996-11-19 2.5
1996-11-20 2.5.1
1997-07-01 3.0
1998-07-11 3.1
1999-07-08 3.2
1999-11-25 3.2.1
2000-02-22 3.2.2
2000-11-06 4.0
2002-07-04 4.0.1
2003-04-11 5.0
2003-11-25 5.0.1
2004-03-17 5.0.2
2006-06-26 5.0.3
2006-02-21 5.1
2006-06-07 5.1.1
2007-03-29 5.1.2
2008-01-21 5.1.3
2008-08-18 5.1.4
2012-02-17 5.1.5 *
2011-12-16 5.2.0
2012-06-08 5.2.1
2013-03-21 5.2.2
2013-11-11 5.2.3
2015-03-07 5.2.4 *
2015-01-12 5.3.0
2015-06-10 5.3.1
2015-11-25 5.3.2
2016-05-30 5.3.3
2017-01-30 5.3.4
2018-06-26 5.3.5 *
2020-09-14 5.3.6 *
2020-06-18 5.4.0
2020-09-30 5.4.1
2020-11-13 5.4.2
2021-03-15 5.4.3
