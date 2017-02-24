using System.Web.Mvc;
using Frapid.Areas;

namespace TheSmsCentral
{
    public class AreaRegistration : FrapidAreaRegistration
    {
        public override string AreaName => "TheSmsCentral";

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.Routes.LowercaseUrls = true;
            context.Routes.MapMvcAttributeRoutes();
        }
    }
}