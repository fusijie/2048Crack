.class public final Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;
.super Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewPermissionsRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p2}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p2}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setPermissions([Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-void
.end method

.method public varargs constructor <init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setPermissions([Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-void
.end method


# virtual methods
.method public final bridge synthetic setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic setRequestCode(I)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setRequestCode(I)Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setRequestCode(I)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method
