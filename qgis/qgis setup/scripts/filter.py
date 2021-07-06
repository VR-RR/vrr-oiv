# -*- coding: utf-8 -*-

from qgis.PyQt.QtCore import QCoreApplication
from qgis.core import (QgsProcessing,
                       QgsFeatureSink,
                       QgsProcessingException,
                       QgsProcessingAlgorithm,
                       QgsProcessingParameterNumber,
                       QgsProcessingParameterFeatureSink)
from qgis import processing
from qgis.utils import iface


class ExampleProcessingAlgorithm(QgsProcessingAlgorithm):
    """
    This script changes the query filter for VRR OIV layers based on the 'bouwlaag' attribute.


    All Processing algorithms should extend the QgsProcessingAlgorithm
    class.
    """

    # Constants used to refer to parameters and outputs. They will be
    # used when calling the algorithm from another algorithm, or when
    # calling from the QGIS console.

    INPUT = 'INPUT'

    def tr(self, string):
        """
        Returns a translatable string with the self.tr() function.
        """
        return QCoreApplication.translate('Processing', string)

    def createInstance(self):
        return ExampleProcessingAlgorithm()

    def name(self):
        """
        Returns the algorithm name, used for identifying the algorithm. This
        string should be fixed for the algorithm, and must not be localised.
        The name should be unique within each provider. Names should contain
        lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return 'changefilter'

    def displayName(self):
        """
        Returns the translated algorithm name, which should be used for any
        user-visible display of the algorithm name.
        """
        return self.tr('Verander bouwlaag')

    def group(self):
        """
        Returns the name of the group this algorithm belongs to. This string
        should be localised.
        """
        return self.tr('VRR OIV')

    def groupId(self):
        """
        Returns the unique ID of the group this algorithm belongs to. This
        string should be fixed for the algorithm, and must not be localised.
        The group id should be unique within each provider. Group id should
        contain lowercase alphanumeric characters only and no spaces or other
        formatting characters.
        """
        return 'vrroiv'

    def shortHelpString(self):
        """
        Returns a localised short helper string for the algorithm. This string
        should provide a basic description about what the algorithm does and the
        parameters and outputs associated with it..
        """
        return self.tr("Verander VRR OIV bouwlaag (filter) van zichtbare tekenlagen. Bouwlaag 0 is de begane grond. De eerste verdieping is bouwlaag 1, enz.")

    def initAlgorithm(self, config=None):
        """
        Here we define the inputs and output of the algorithm, along
        with some other properties.
        """

       # add parameter to specify bouwlaag to filter on
        self.addParameter(
            QgsProcessingParameterNumber(
                self.INPUT,
                self.tr('Selecteer bouwlaag'),
            )
        )

    def processAlgorithm(self, parameters, context, feedback):
        """
        Here we apply the filter to each layer
        """

        feedback.pushInfo('Filter instellen op bouwlaag ' + str(parameters[self.INPUT]))

        layers = iface.mapCanvas().layers()
        for layer in layers:
            if '"bouwlaag" =' in layer.subsetString():
                layer.setSubsetString('"bouwlaag" = ' + str(parameters[self.INPUT]))           

        # # Retrieve the feature source and sink. The 'dest_id' variable is used
        # # to uniquely identify the feature sink, and must be included in the
        # # dictionary returned by the processAlgorithm function.
        # source = self.parameterAsSource(
        #     parameters,
        #     self.INPUT,
        #     context
        # )

        # # If source was not found, throw an exception to indicate that the algorithm
        # # encountered a fatal error. The exception text can be any string, but in this
        # # case we use the pre-built invalidSourceError method to return a standard
        # # helper text for when a source cannot be evaluated
        # if source is None:
        #     raise QgsProcessingException(self.invalidSourceError(parameters, self.INPUT))

        # (sink, dest_id) = self.parameterAsSink(
        #     parameters,
        #     self.OUTPUT,
        #     context,
        #     source.fields(),
        #     source.wkbType(),
        #     source.sourceCrs()
        # )

        # # Send some information to the user
   
        # # If sink was not created, throw an exception to indicate that the algorithm
        # # encountered a fatal error. The exception text can be any string, but in this
        # # case we use the pre-built invalidSinkError method to return a standard
        # # helper text for when a sink cannot be evaluated
        # if sink is None:
        #     raise QgsProcessingException(self.invalidSinkError(parameters, self.OUTPUT))

        # # Compute the number of steps to display within the progress bar and
        # # get features from source
        # total = 100.0 / source.featureCount() if source.featureCount() else 0
        # features = source.getFeatures()

        # for current, feature in enumerate(features):
        #     # Stop the algorithm if cancel button has been clicked
        #     if feedback.isCanceled():
        #         break

        #     # Add a feature in the sink
        #     sink.addFeature(feature, QgsFeatureSink.FastInsert)

        #     # Update the progress bar
        #     feedback.setProgress(int(current * total))

        # # Return the results of the algorithm. In this case our only result is
        # # the feature sink which contains the processed features, but some
        # # algorithms may return multiple feature sinks, calculated numeric
        # # statistics, etc. These should all be included in the returned
        # # dictionary, with keys matching the feature corresponding parameter
        # # or output names.
        # return {self.OUTPUT: dest_id}
        return {}
