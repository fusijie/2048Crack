.class abstract Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;
.super Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "KatanaAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method protected tryIntent(Landroid/content/Intent;I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
