import 'package:angular2/angular2.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/router.dart';

@Component(selector: 'page', template: '<p>Page</p>')
class PageComponent {}

@Component(
    selector: 'app',
    template: '<router-outlet></router-outlet>',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [ROUTER_PROVIDERS])
@RouteConfig(const [
  const Route(
      name: 'Home', path: '/', component: PageComponent, useAsDefault: true)
])
class AppComponent {}

main() {
  bootstrap(AppComponent);
}
