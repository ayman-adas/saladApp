// ignore_for_file: unrelated_type_equality_checks

part of '../import/import.dart';

class CDraerrServer extends StatelessWidget {
  const CDraerrServer({super.key});

  @override
  Widget build(BuildContext context) {
    //provider
    ControllerAuth auth = Provider.of<ControllerAuth>(context, listen: false);
// to check if is admin or not
    bool isadmin = auth.userEmail == 'aymanhaniadas28@gmail.com';
    return Padding(
      //padding
      padding: const EdgeInsets.all(MDime.l),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //bottom for search
            CServiceTabs(
              icon: MIcons.searchOutlined,
              title: MLanguages.searchLabel,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.search);
              },
            ),
            //bottom for packet
            CServiceTabs(
                icon: MIcons.shoppingOutlined,
                title: MLanguages.packet,
                onTap: () {
                  Navigator.pushNamed(context, MRouteName.packet);
                }),
            //bottom for change theam
            CServiceTabs(
              icon: MIcons.themeOutlined,
              title: MLanguages.apperance,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.themeChange);
              },
            ),
            //bottom for change language
            CServiceTabs(
              icon: MIcons.langOutlined,
              title: MLanguages.language,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.langhange);
              },
            ),
            //bottom for assistance question
            CServiceTabs(
              icon: MIcons.question,
              title: MLanguages.assistacne,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.assistance);
              },
            ),
            //bottom for question answer
            Visibility(
              visible: isadmin,
              child: CServiceTabs(
                icon: MIcons.questionAnswer,
                title: MLanguages.questionAnswer,
                onTap: () {
                  Navigator.pushNamed(context, MRouteName.questionAnswer);
                },
              ),
            ),
            //bottom for salad upload
            Visibility(
              visible: isadmin,
              child: CServiceTabs(
                icon: Icons.data_usage,
                title: MLanguages.saladUpload,
                onTap: () {
                  Navigator.pushNamed(context, MRouteName.saladUpload);
                },
              ),
            ),
            //bottom for salad request
            Visibility(
              visible: isadmin,
              child: CServiceTabs(
                icon: Icons.data_exploration,
                title: MLanguages.request,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewRequestList(),
                      ));
                },
              ),
            ),

            //bottom for about us
            CServiceTabs(
              icon: MIcons.aboutOutlined,
              title: MLanguages.about,
              onTap: () {
                Navigator.pushNamed(context, MRouteName.about);
              },
            ),
            //bottom for sign out
            CServiceTabs(
                icon: MIcons.signOut,
                title: MLanguages.signOut,
                onTap: () {
                  Navigator.pushNamed(context, MRouteName.signout);
                })
          ],
        ),
      ),
    );
  }
}
