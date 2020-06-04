This document is based on https://www.w3.org/TR/security-privacy-questionnaire/

# What information might this feature expose to Web sites or other parties, and for what purposes is that exposure necessary?
This specification adds an API where the user can send information to the platform. This information is not communicated elsewhere, and is not stored in any permanent location.

By probing this API, the client may get some information on how the platform implements this specification.

# Is this specification exposing the minimum amount of information necessary to power the feature?
Yes.

# How does this specification deal with personal information or personally-identifiable information or information derived thereof?
This specification does not deal with personal information.

# How does this specification deal with sensitive information?
This specification does not deal with sensitive information.

# Does this specification introduce new state for an origin that persists across browsing sessions?
No.

# What information from the underlying platform, e.g. configuration data, is exposed by this specification to an origin?
By observing the result of setting the attribute defined by this specification, the user can learn how this feature is implemented in this particular browser. This is not considered sensitive or personal information.

# Does this specification allow an origin access to sensors on a user’s device
No.

# What data does this specification expose to an origin? Please also document what data is identical to data exposed by other features, in the same or different contexts.
None.

# Does this specification enable new script execution/loading mechanisms?
No.

# Does this specification allow an origin to access other devices?
No.

# Does this specification allow an origin some measure of control over a user agent’s native UI?
No.

# What temporary identifiers might this this specification create or expose to the web?
None.

# How does this specification distinguish between behavior in first-party and third-party contexts?
It makes no such distinction.

# How does this specification work in the context of a user agent’s Private Browsing or "incognito" mode?
It is not influenced by incognito or private mode.

# Does this specification have a "Security Considerations" and "Privacy Considerations" section?
No.

# Does this specification allow downgrading default security characteristics?
No.

# What should this questionnaire have asked?
"1: Does your specification satisfy (some set of criteria)? If so, stop here."
