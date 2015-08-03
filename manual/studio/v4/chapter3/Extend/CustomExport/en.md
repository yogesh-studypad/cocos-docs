#Customizing Exported Data Formats#

By default you can export data from Cocos Studio to other formats, including CSB, JSON and Lua. You can also customize export formats by implementing the following interface: `CocoStudio.Projects.IGameProjectSerializer`.  For more information, see the description of 
"CustomSerializer" in Samples. 

Interface Description:

    [TypeExtensionPoint]
    public interface IGameProjectSerializer
    {
        /// <summary>
        /// 序列化器ID
        /// </summary>
        string ID { get; }

        /// <summary>
        /// 对外显示的名称
        /// </summary>
        string Label { get; }

        /// <summary>
        /// 执行序列化
        /// </summary>
        /// <param name="info">发布设置信息</param>
        /// <param name="projFile">项目文件</param>
        /// <returns>错误信息（正常结束时为空）</returns>
        string Serialize(PublishInfo info, IProjectFile projFile);

        /// <summary>
        /// 执行上下文初始化操作，在第一次 Serialize 调用之前调用它。
        /// 对于一个 Studio 解决方案只应该调用一次。
        /// 注：每个 *.csd 文件会调用一次 Serialize.
        /// </summary>
        void ContextInitialize(PublishInfo publishInfo);

        /// <summary>
        /// 执行上下文结束操作，在最后一次 Serialize 调用之后调用它。
        /// 对于一个 Studio 解决方案只应该调用一次。
        /// 注：每个 *.csd 文件会调用一次 Serialize.
        /// </summary>
        void ContextFinalize(PublishInfo publishInfo);
     }

Currently you can transfer CSD file (Cocos Studio project file) to other targeted file formats. 

***Note** The contents of the document are under continuous update based on users' feedback. Please check the latest version for reference. If you have any suggestions or comments on the extensions of Cocos Studio, please let us know. Thanks for your interest and support for Cocos Studio, and for helping us make a better product.*  