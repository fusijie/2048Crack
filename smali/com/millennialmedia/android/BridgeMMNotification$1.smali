.class Lcom/millennialmedia/android/BridgeMMNotification$1;
.super Ljava/lang/Object;
.source "BridgeMMNotification.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMNotification;->alert(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/millennialmedia/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMNotification;

.field final synthetic val$arguments:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMNotification;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->this$0:Lcom/millennialmedia/android/BridgeMMNotification;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->val$arguments:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 75
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->this$0:Lcom/millennialmedia/android/BridgeMMNotification;

    iget-object v6, v6, Lcom/millennialmedia/android/BridgeMMNotification;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/android/MMWebView;

    .line 76
    .local v4, mmWebView:Lcom/millennialmedia/android/MMWebView;
    if-eqz v4, :cond_6

    .line 77
    invoke-virtual {v4}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->val$arguments:Ljava/util/Map;

    .line 80
    .local v3, finalArguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_5

    .line 82
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 84
    .local v1, alertDialog:Landroid/app/AlertDialog;
    const-string v6, "title"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    const-string v6, "title"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    const-string v6, "message"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    const-string v6, "message"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 90
    :cond_1
    const-string v6, "cancelButton"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    const/4 v7, -0x2

    const-string v6, "cancelButton"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->this$0:Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-virtual {v1, v7, v6, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 95
    :cond_2
    const-string v6, "buttons"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    const-string v6, "buttons"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, buttons:[Ljava/lang/String;
    array-length v6, v2

    if-lez v6, :cond_3

    .line 99
    const/4 v6, -0x3

    const/4 v7, 0x0

    aget-object v7, v2, v7

    iget-object v8, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->this$0:Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-virtual {v1, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    :cond_3
    array-length v6, v2

    if-le v6, v9, :cond_4

    .line 103
    const/4 v6, -0x1

    aget-object v7, v2, v9

    iget-object v8, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->this$0:Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-virtual {v1, v6, v7, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    .end local v2           #buttons:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 110
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    :cond_5
    new-instance v5, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v5}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 111
    .local v5, response:Lcom/millennialmedia/android/MMJSResponse;
    iput v9, v5, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 112
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMNotification$1;->this$0:Lcom/millennialmedia/android/BridgeMMNotification;

    #getter for: Lcom/millennialmedia/android/BridgeMMNotification;->index:I
    invoke-static {v6}, Lcom/millennialmedia/android/BridgeMMNotification;->access$000(Lcom/millennialmedia/android/BridgeMMNotification;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 116
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #finalArguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v5

    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMNotification$1;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
