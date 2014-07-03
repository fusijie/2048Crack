.class Lcom/mdotm/android/vast/VolumnContentObserver$1;
.super Ljava/lang/Object;
.source "VolumnContentObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VolumnContentObserver;->sendImpression(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VolumnContentObserver;

.field private final synthetic val$impressionUrl:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VolumnContentObserver;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VolumnContentObserver$1;->this$0:Lcom/mdotm/android/vast/VolumnContentObserver;

    iput-object p2, p0, Lcom/mdotm/android/vast/VolumnContentObserver$1;->val$impressionUrl:Ljava/util/ArrayList;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver$1;->val$impressionUrl:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver$1;->val$impressionUrl:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 81
    .end local v0           #i:I
    :cond_0
    return-void

    .line 77
    .restart local v0       #i:I
    :cond_1
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v2

    .line 78
    iget-object v1, p0, Lcom/mdotm/android/vast/VolumnContentObserver$1;->val$impressionUrl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/mdotm/android/vast/VolumnContentObserver$1;->this$0:Lcom/mdotm/android/vast/VolumnContentObserver;

    #getter for: Lcom/mdotm/android/vast/VolumnContentObserver;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/mdotm/android/vast/VolumnContentObserver;->access$0(Lcom/mdotm/android/vast/VolumnContentObserver;)Landroid/content/Context;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v1, v3}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
