.class abstract Lcom/a/a/b/a/am$ab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/a/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ab"
.end annotation


# instance fields
.field final c:Ljava/lang/String;

.field final d:Z

.field final e:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/am$ab;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/a/a/b/a/am$ab;->d:Z

    iput-boolean p3, p0, Lcom/a/a/b/a/am$ab;->e:Z

    return-void
.end method


# virtual methods
.method abstract a(Lcom/a/a/d/aa;Ljava/lang/Object;)V
.end method

.method abstract a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
.end method
