.class Lcom/nextpeer/android/facebook/AuthorizationClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$1;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$1;->val$activity:Landroid/app/Activity;

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
