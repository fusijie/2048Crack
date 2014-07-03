.class public final Lcom/nextpeer/android/facebook/Session$OpenRequest;
.super Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$OpenRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$OpenRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setDefaultAudience(Lcom/nextpeer/android/facebook/SessionDefaultAudience;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$OpenRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge varargs synthetic setPermissions([Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setPermissions([Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$OpenRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nextpeer/android/facebook/Session$OpenRequest;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final varargs setPermissions([Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$OpenRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setPermissions([Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method

.method public final bridge synthetic setRequestCode(I)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    return-object v0
.end method

.method public final setRequestCode(I)Lcom/nextpeer/android/facebook/Session$OpenRequest;
    .locals 0

    invoke-super {p0, p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setRequestCode(I)Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    return-object p0
.end method
