.class public Lcom/nextpeer/android/facebook/TestSession;
.super Lcom/nextpeer/android/facebook/Session;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/TestSession$FqlResponse;,
        Lcom/nextpeer/android/facebook/TestSession$FqlResult;,
        Lcom/nextpeer/android/facebook/TestSession$Mode;,
        Lcom/nextpeer/android/facebook/TestSession$TestAccount;,
        Lcom/nextpeer/android/facebook/TestSession$TestTokenCachingStrategy;,
        Lcom/nextpeer/android/facebook/TestSession$UserAccount;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.TestSession"

.field private static appTestAccounts:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/facebook/TestSession$TestAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L

.field private static testApplicationId:Ljava/lang/String;

.field private static testApplicationSecret:Ljava/lang/String;


# instance fields
.field private final mode:Lcom/nextpeer/android/facebook/TestSession$Mode;

.field private final requestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionUniqueUserTag:Ljava/lang/String;

.field private testAccountId:Ljava/lang/String;

.field private wasAskedToExtendAccessToken:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/TestSession;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nextpeer/android/facebook/TestSession;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/nextpeer/android/facebook/TestSession$Mode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nextpeer/android/facebook/TokenCachingStrategy;",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/facebook/TestSession$Mode;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p3}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/TokenCachingStrategy;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    const-string v1, "testApplicationId"

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    const-string v1, "testApplicationSecret"

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/nextpeer/android/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    iput-object p5, p0, Lcom/nextpeer/android/facebook/TestSession;->mode:Lcom/nextpeer/android/facebook/TestSession$Mode;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    return-void
.end method

.method public static createSessionWithPrivateUser(Landroid/app/Activity;Ljava/util/List;)Lcom/nextpeer/android/facebook/TestSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nextpeer/android/facebook/TestSession;"
        }
    .end annotation

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession$Mode;->PRIVATE:Lcom/nextpeer/android/facebook/TestSession$Mode;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/nextpeer/android/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/nextpeer/android/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession;

    move-result-object v0

    return-object v0
.end method

.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;)Lcom/nextpeer/android/facebook/TestSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nextpeer/android/facebook/TestSession;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nextpeer/android/facebook/TestSession;->createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession;

    move-result-object v0

    return-object v0
.end method

.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nextpeer/android/facebook/TestSession;"
        }
    .end annotation

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession$Mode;->SHARED:Lcom/nextpeer/android/facebook/TestSession$Mode;

    invoke-static {p0, p1, v0, p2}, Lcom/nextpeer/android/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/nextpeer/android/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession;

    move-result-object v0

    return-object v0
.end method

.method private createTestAccountAndFinishAuth()Lcom/nextpeer/android/facebook/TestSession$TestAccount;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "installed"

    const-string v3, "true"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TestSession;->getPermissionsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-static {}, Lcom/nextpeer/android/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/TestSession;->mode:Lcom/nextpeer/android/facebook/TestSession$Mode;

    sget-object v3, Lcom/nextpeer/android/facebook/TestSession$Mode;->SHARED:Lcom/nextpeer/android/facebook/TestSession$Mode;

    if-ne v0, v3, :cond_0

    const-string v0, "name"

    const-string v3, "Shared %s Testuser"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "%s/accounts/test-users"

    new-array v3, v7, [Ljava/lang/Object;

    sget-object v4, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/nextpeer/android/facebook/Request;

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->POST:Lcom/nextpeer/android/facebook/HttpMethod;

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)V

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/Request;->executeAndWait()Lcom/nextpeer/android/facebook/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Response;->getError()Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v3

    const-class v4, Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    invoke-virtual {v0, v4}, Lcom/nextpeer/android/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getException()Lcom/nextpeer/android/facebook/FacebookException;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/nextpeer/android/facebook/TestSession;->finishAuthOrReauth(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-boolean v1, Lcom/nextpeer/android/facebook/TestSession;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/facebook/TestSession;->mode:Lcom/nextpeer/android/facebook/TestSession$Mode;

    sget-object v3, Lcom/nextpeer/android/facebook/TestSession$Mode;->SHARED:Lcom/nextpeer/android/facebook/TestSession$Mode;

    if-ne v1, v3, :cond_3

    const-string v1, "name"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nextpeer/android/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nextpeer/android/facebook/TestSession;->storeTestAccount(Lcom/nextpeer/android/facebook/TestSession$TestAccount;)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/TestSession;->finishAuthWithTestAccount(Lcom/nextpeer/android/facebook/TestSession$TestAccount;)V

    goto :goto_0
.end method

.method private static declared-synchronized createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/nextpeer/android/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nextpeer/android/facebook/TestSession$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nextpeer/android/facebook/TestSession;"
        }
    .end annotation

    const-class v6, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Must provide app ID and secret"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "publish_actions"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/nextpeer/android/facebook/TestSession;

    new-instance v3, Lcom/nextpeer/android/facebook/TestSession$TestTokenCachingStrategy;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/nextpeer/android/facebook/TestSession$TestTokenCachingStrategy;-><init>(Lcom/nextpeer/android/facebook/TestSession$TestTokenCachingStrategy;)V

    move-object v1, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/TestSession;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/nextpeer/android/facebook/TestSession$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_2
    move-object v2, p1

    goto :goto_0
.end method

.method private deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/nextpeer/android/facebook/Request;

    const/4 v2, 0x0

    sget-object v3, Lcom/nextpeer/android/facebook/HttpMethod;->DELETE:Lcom/nextpeer/android/facebook/HttpMethod;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)V

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Request;->executeAndWait()Lcom/nextpeer/android/facebook/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Response;->getError()Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Response;->getGraphObject()Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    if-eqz v1, :cond_1

    const-string v0, "FacebookSDK.TestSession"

    const-string v2, "Could not delete test account %s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getException()Lcom/nextpeer/android/facebook/FacebookException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "FACEBOOK_NON_JSON_RESULT"

    invoke-interface {v0, v1}, Lcom/nextpeer/android/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "FacebookSDK.TestSession"

    const-string v1, "Could not delete test account %s: unknown reason"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findOrCreateSharedTestAccount()V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/TestSession;->findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/TestSession;->finishAuthWithTestAccount(Lcom/nextpeer/android/facebook/TestSession$TestAccount;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    goto :goto_0
.end method

.method private static declared-synchronized findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/nextpeer/android/facebook/TestSession$TestAccount;
    .locals 4

    const-class v1, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/nextpeer/android/facebook/TestSession;->retrieveTestAccountsForAppIfNeeded()V

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/TestSession$TestAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishAuthWithTestAccount(Lcom/nextpeer/android/facebook/TestSession$TestAccount;)V
    .locals 3

    invoke-interface {p1}, Lcom/nextpeer/android/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/TestSession;->testAccountId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/nextpeer/android/facebook/TestSession$TestAccount;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    sget-object v2, Lcom/nextpeer/android/facebook/AccessTokenSource;->TEST_USER:Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/AccessToken;->createFromString(Ljava/lang/String;Ljava/util/List;Lcom/nextpeer/android/facebook/AccessTokenSource;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/TestSession;->finishAuthOrReauth(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V

    return-void
.end method

.method static final getAppAccessToken()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPermissionsString()Ljava/lang/String;
    .locals 2

    const-string v0, ","

    iget-object v1, p0, Lcom/nextpeer/android/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSharedTestAccountIdentifier()Ljava/lang/String;
    .locals 6

    const-wide v4, 0xffffffffL

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TestSession;->getPermissionsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    and-long v2, v0, v4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    :goto_0
    xor-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/facebook/TestSession;->validNameStringFromInteger(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getTestApplicationId()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTestApplicationSecret()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/facebook/TestSession$TestAccount;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nextpeer/android/facebook/TestSession$UserAccount;",
            ">;)V"
        }
    .end annotation

    const-class v2, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v2

    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/TestSession;->storeTestAccount(Lcom/nextpeer/android/facebook/TestSession$TestAccount;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$UserAccount;

    sget-object v1, Lcom/nextpeer/android/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/TestSession$UserAccount;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/TestSession$UserAccount;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nextpeer/android/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static declared-synchronized retrieveTestAccountsForAppIfNeeded()V
    .locals 6

    const-class v1, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nextpeer/android/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    const-string v0, "SELECT id,access_token FROM test_account WHERE app_id = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "test_accounts"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "users"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v0, "q"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-static {}, Lcom/nextpeer/android/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const/4 v2, 0x0

    const-string v4, "fql"

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Request;->executeAndWait()Lcom/nextpeer/android/facebook/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Response;->getError()Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Response;->getError()Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getException()Lcom/nextpeer/android/facebook/FacebookException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v2, Lcom/nextpeer/android/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const-class v2, Lcom/nextpeer/android/facebook/TestSession$FqlResponse;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$FqlResponse;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/TestSession$FqlResponse;->getData()Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    :cond_2
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "Unexpected number of results from FQL query"

    invoke-direct {v0, v2}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$FqlResult;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v0

    const-class v3, Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    invoke-interface {v0, v3}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/TestSession$FqlResult;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v0

    const-class v2, Lcom/nextpeer/android/facebook/TestSession$UserAccount;

    invoke-interface {v0, v2}, Lcom/nextpeer/android/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nextpeer/android/facebook/TestSession;->populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized setTestApplicationId(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "Can\'t have more than one test application ID"

    invoke-direct {v0, v2}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput-object p0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setTestApplicationSecret(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "Can\'t have more than one test application secret"

    invoke-direct {v0, v2}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput-object p0, Lcom/nextpeer/android/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method private static declared-synchronized storeTestAccount(Lcom/nextpeer/android/facebook/TestSession$TestAccount;)V
    .locals 3

    const-class v1, Lcom/nextpeer/android/facebook/TestSession;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    invoke-interface {p0}, Lcom/nextpeer/android/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private validNameStringFromInteger(J)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "Perm"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v1, v0

    move v2, v0

    :goto_0
    if-lt v1, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-char v0, v4, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    :cond_1
    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v2, v2, -0x30

    int-to-char v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method authorize(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/TestSession;->mode:Lcom/nextpeer/android/facebook/TestSession$Mode;

    sget-object v1, Lcom/nextpeer/android/facebook/TestSession$Mode;->PRIVATE:Lcom/nextpeer/android/facebook/TestSession$Mode;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/nextpeer/android/facebook/TestSession$TestAccount;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/facebook/TestSession;->findOrCreateSharedTestAccount()V

    goto :goto_0
.end method

.method extendAccessToken()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    invoke-super {p0}, Lcom/nextpeer/android/facebook/Session;->extendAccessToken()V

    return-void
.end method

.method fakeTokenRefreshAttempt()V
    .locals 1

    new-instance v0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;-><init>(Lcom/nextpeer/android/facebook/Session;)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/TestSession;->setCurrentTokenRefreshRequest(Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;)V

    return-void
.end method

.method forceExtendAccessToken(Z)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/TestSession;->getTokenInfo()Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v3

    new-instance v0, Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/AccessToken;->getPermissions()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/nextpeer/android/facebook/AccessTokenSource;->TEST_USER:Lcom/nextpeer/android/facebook/AccessTokenSource;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/nextpeer/android/facebook/AccessTokenSource;Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/TestSession;->setTokenInfo(Lcom/nextpeer/android/facebook/AccessToken;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/TestSession;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    return-void
.end method

.method public final getTestUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/TestSession;->testAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getWasAskedToExtendAccessToken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    return v0
.end method

.method postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/TestSession;->testAccountId:Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/TestSession;->mode:Lcom/nextpeer/android/facebook/TestSession$Mode;

    sget-object v2, Lcom/nextpeer/android/facebook/TestSession$Mode;->PRIVATE:Lcom/nextpeer/android/facebook/TestSession$Mode;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nextpeer/android/facebook/TestSession;->deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method shouldExtendAccessToken()Z
    .locals 2

    invoke-super {p0}, Lcom/nextpeer/android/facebook/Session;->shouldExtendAccessToken()Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nextpeer/android/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/nextpeer/android/facebook/Session;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{TestSession testUserId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nextpeer/android/facebook/TestSession;->testAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
